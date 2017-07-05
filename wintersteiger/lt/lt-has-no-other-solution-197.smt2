(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1537823323426863453278201632201671600341796875p851 {+ 692574054634688 851 (1.73241e+256)}
; Y = 1.1584104895767761700398068569484166800975799560546875p-490 {+ 713417421829547 -490 (3.6238e-148)}
; 1.1537823323426863453278201632201671600341796875p851 < 1.1584104895767761700398068569484166800975799560546875p-490 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101010010 #b0010011101011110010001110110100000011101010011000000)))
(assert (= y (fp #b0 #b01000010101 #b0010100010001101100101110000000000010011010110101011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
