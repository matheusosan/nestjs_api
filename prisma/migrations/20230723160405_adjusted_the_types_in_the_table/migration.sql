/*
  Warnings:

  - The primary key for the `Funko` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Image` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- DropForeignKey
ALTER TABLE "Image" DROP CONSTRAINT "Image_funkoId_fkey";

-- AlterTable
ALTER TABLE "Funko" DROP CONSTRAINT "Funko_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Funko_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Funko_id_seq";

-- AlterTable
ALTER TABLE "Image" DROP CONSTRAINT "Image_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "funkoId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Image_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "image_id_seq";

-- AddForeignKey
ALTER TABLE "Image" ADD CONSTRAINT "Image_funkoId_fkey" FOREIGN KEY ("funkoId") REFERENCES "Funko"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
