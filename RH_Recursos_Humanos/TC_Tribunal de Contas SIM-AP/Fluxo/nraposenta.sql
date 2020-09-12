select cadser.CNROAPOSEN, cadser.NIDCADGRL
from cadser, tagffu, cadcrg, tbxtcr
where cadser.NIDCADSER = tagffu.NIDCADSER and
      tagffu.NIDCADCRG = cadcrg.NIDCADCRG and
	  cadcrg.NIDTBXTCR = tbxtcr.NIDTBXTCR and
	  tbxtcr.CACAOTCE = 'I'
	  
	  
	 
update cadser set cadser.cnroaposen = '104'
where cadser.nidcadser in (
select cadser.NIDCADSER
from cadser, tagffu, cadcrg, tbxtcr
where cadser.NIDCADSER = tagffu.NIDCADSER and
      tagffu.NIDCADCRG = cadcrg.NIDCADCRG and
	  cadcrg.NIDTBXTCR = tbxtcr.NIDTBXTCR and
	  tbxtcr.CACAOTCE = 'I')

