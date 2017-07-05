(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.923593893546325261922902427613735198974609375p98 {- 4159497114816896 98 (-6.09611e+029)}
; Y = -1.901557419016814076684340761858038604259490966796875p956 {- 4060253656337230 956 (-1.1582e+288)}
; Z = -1.6467044293617763006665200009592808783054351806640625p-640 {- 2912497827092545 -640 (-3.60926e-193)}
; -1.923593893546325261922902427613735198974609375p98 x -1.901557419016814076684340761858038604259490966796875p956 -1.6467044293617763006665200009592808783054351806640625p-640 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001100001 #b1110110001110000101001100011111110010001000110000000)))
(assert (= y (fp #b1 #b11110111011 #b1110011011001100011101111000111000100100101101001110)))
(assert (= z (fp #b1 #b00101111111 #b1010010110001110011010111110011001001001100001000001)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
