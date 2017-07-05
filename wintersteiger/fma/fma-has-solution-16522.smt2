(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.381428098295417239427251843153499066829681396484375p882 {- 1717799441351878 882 (-4.45435e+265)}
; Y = 1.28479895068432536930913556716404855251312255859375p726 {+ 1282620448177436 726 (4.53536e+218)}
; Z = -1.17383588854011033930646590306423604488372802734375p60 {- 782887242852860 60 (-1.35334e+018)}
; -1.381428098295417239427251843153499066829681396484375p882 x 1.28479895068432536930913556716404855251312255859375p726 -1.17383588854011033930646590306423604488372802734375p60 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101110001 #b0110000110100101010001011001011111110100010011000110)))
(assert (= y (fp #b0 #b11011010101 #b0100100011101000100101011000001100011111110100011100)))
(assert (= z (fp #b1 #b10000111011 #b0010110010000000100000100100000000100110100111111100)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)
