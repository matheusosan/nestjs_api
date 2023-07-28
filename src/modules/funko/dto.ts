import { Type } from 'class-transformer';
import {
  IsString,
  IsNotEmpty,
  IsNumber,
  ValidateNested,
  IsArray,
  IsUrl,
} from 'class-validator';

class CreateImageDto {
  @IsNotEmpty({ message: 'Url não deve estar vazia.' })
  @IsUrl()
  url: string;
}

export class CreateFunkoDTO {
  @IsString({ message: 'O título deve ser uma string.' })
  @IsNotEmpty({ message: 'O título não pode estar vazio.' })
  title: string;

  @IsString({ message: 'A descrição deve ser uma string.' })
  @IsNotEmpty({ message: 'A descrição não pode estar vazia.' })
  description: string;

  @IsNotEmpty({ message: 'O preço não pode ser nulo.' })
  @IsNumber()
  price: number;

  @IsArray()
  @ValidateNested({ each: true })
  @Type(() => CreateImageDto)
  images: CreateImageDto[];
}
