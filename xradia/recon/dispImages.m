% Display result of "xradia" demo

Nx=1024;

for sl=1:4
  fname=sprintf('xradia_slice070%d.2Dimgdata',sl-1);

  fp=fopen(fname,'r'); 
  img=fread(fp,[Nx,Nx],'float32');
  fclose(fp);

  figure(sl); clf; colormap(gray(256))
  imagesc(img',[0 80]); colorbar; 
  title(fname,'interpreter','none')
  axis('image')
end


