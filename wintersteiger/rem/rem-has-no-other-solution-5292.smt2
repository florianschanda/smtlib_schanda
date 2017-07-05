(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.649258452075702319206129686790518462657928466796875p796 {- 2924000122835278 796 (-6.8733e+239)}
; Y = 1.3986539466654377417142995909671299159526824951171875p369 {+ 1795377765652243 369 (1.68182e+111)}
; -1.649258452075702319206129686790518462657928466796875p796 % 1.3986539466654377417142995909671299159526824951171875p369 == -1.583336297043934859374303414369933307170867919921875p368
; [HW: -1.583336297043934859374303414369933307170867919921875p368] 

; mpf : - 2627113129998750 368
; mpfd: - 2627113129998750 368 (-9.51944e+110) class: Neg. norm. non-zero
; hwf : - 2627113129998750 368 (-9.51944e+110) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100011011 #b1010011000110101110011010100101001010001000101001110)))
(assert (= y (fp #b0 #b10101110000 #b0110011000001110001011110101111101011001011100010011)))
(assert (= r (fp #b0 #b10101101111 #x36c6d7b053488)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
