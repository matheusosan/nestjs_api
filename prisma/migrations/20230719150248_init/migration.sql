-- CreateTable
CREATE TABLE "Funko" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "price" INTEGER NOT NULL,

    CONSTRAINT "Funko_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Image" (
    "id" INTEGER NOT NULL,
    "url" TEXT NOT NULL,
    "funkoId" INTEGER NOT NULL,

    CONSTRAINT "Image_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Image" ADD CONSTRAINT "Image_funkoId_fkey" FOREIGN KEY ("funkoId") REFERENCES "Funko"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
