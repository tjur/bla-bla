
class BlaBla
  WORD_LIST = %w{
      phototropism prednisone cushion rhapsodise
      leukorrhoeal blanket unconsecrative brassica figwort chiengmai allergy
      equilibrating saithe eudemonistically laird ileitis
      noncruciform fields generalissimo lawn
      surliness tortuously costliness marcia carbarn unconstricted topeka
      nondeclaration resuscitator crackers nonpunctual netty chapelling ceto carbonylation morosely unintended
      dishabituate mucin lucency
      unsegmental revolutionizer metathesis logarithmically uncriticized pneumonokoniosis prelegend bicolor wonder
      reverable piend unconvenable scapolite
      umbellar outshamed ludhiana monumentally advancing nongovernance lully universalize
      gangland focalizing patronage unelectrified ommiads goc pyrenocarpic accreted
      prologuist merciless albuminuric galati etzel perigon nondiffusing jacquelynne preissuance
      orobanchaceous newhouse intercomparing marbelized unparenthesized unnymphlike isographically phytocidal
      tumidity prokopyevsk biacetyl entomostracan agaricin spectrality ivar
      unhuddle antifeminist mizoguchi eclosion glazed sarcocarcinomas foreboder
    }

  def author
    WORD_LIST.sample.capitalize + " " + WORD_LIST.sample.capitalize
  end

  def title
    s = ""
    rand(1..5).times do
      s << WORD_LIST.sample << " "
    end
    s.capitalize!.rstrip!
  end

  def sentence
    s = ""
    rand(5..10).times do
      s << WORD_LIST.sample << " "
    end
    s.capitalize!.rstrip! << "."
  end

  def content
    s = ""
    rand(1..5).times do
      s << sentence << " "
    end
    s.rstrip!
  end
end