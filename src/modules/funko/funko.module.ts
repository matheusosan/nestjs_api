import { Module } from '@nestjs/common';
import { FunkoService } from './funko.service';
import { FunkoController } from './funko.controller';
import { PrismaService } from 'src/database/prisma.service';

@Module({
  controllers: [FunkoController],
  providers: [FunkoService, PrismaService],
})
export class FunkoModule {}
