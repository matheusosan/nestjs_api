/*
  Warnings:

  - The primary key for the `Funko` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `Funko` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `Image` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `Image` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `funkoId` column on the `Image` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- DropForeignKey
ALTER TABLE "Image" DROP CONSTRAINT "Image_funkoId_fkey";

-- AlterTable
ALTER TABLE "Funko" DROP CONSTRAINT "Funko_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "Funko_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Image" DROP CONSTRAINT "Image_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
DROP COLUMN "funkoId",
ADD COLUMN     "funkoId" INTEGER,
ADD CONSTRAINT "Image_pkey" PRIMARY KEY ("id");

-- AddForeignKey
ALTER TABLE "Image" ADD CONSTRAINT "Image_funkoId_fkey" FOREIGN KEY ("funkoId") REFERENCES "Funko"("id") ON DELETE SET NULL ON UPDATE CASCADE;
