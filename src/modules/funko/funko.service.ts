import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateFunkoDTO } from './dto';
import { PrismaService } from 'src/database/prisma.service';

@Injectable()
export class FunkoService {
  constructor(private prisma: PrismaService) {}

  async create(data: CreateFunkoDTO) {
    const { title, description, price, images } = data;

    const funko = await this.prisma.funko.create({
      data: {
        title,
        description,
        price,
        images: {
          create: images,
        },
      },

      include: {
        images: true,
      },
    });
    return funko;
  }

  async getById(id: number) {
    const funko = await this.prisma.funko.findUnique({
      where: {
        id,
      },
      include: {
        images: true,
      },
    });
    if (!funko) {
      throw new NotFoundException('Produto não encontrado');
    }
    return funko;
  }

  async deleteById(id: number) {
    const funkoToDelete = await this.prisma.funko.findUnique({
      where: {
        id,
      },
    });

    if (!funkoToDelete) {
      throw new NotFoundException('Produto a deletar não encontrado');
    }

    await this.prisma.$transaction([
      this.prisma.image.deleteMany({
        where: {
          funkoId: id,
        },
      }),
      this.prisma.funko.delete({
        where: {
          id,
        },
      }),
    ]);
  }

  async getAll() {
    return await this.prisma.funko.findMany({
      include: {
        images: true,
      },
    });
  }
}
