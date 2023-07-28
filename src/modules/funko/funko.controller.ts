import { Body, Controller, Delete, Get, Param, Post } from '@nestjs/common';
import { CreateFunkoDTO } from './dto';
import { FunkoService } from './funko.service';

@Controller('funko')
export class FunkoController {
  constructor(private readonly funkoService: FunkoService) {}

  @Post()
  create(
    @Body()
    data: CreateFunkoDTO,
  ) {
    return this.funkoService.create(data);
  }

  @Get()
  async getAll() {
    return this.funkoService.getAll();
  }

  @Get(':id')
  async getById(@Param('id') id: number) {
    return this.funkoService.getById(id);
  }

  @Delete(':id')
  async deleteById(@Param('id') id: number) {
    return this.funkoService.deleteById(id);
  }
}
