(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4711435946447728451147440864588133990764617919921875p877 {+ 2121842117280195 877 (1.48239e+264)}
; Y = 1.581909925768492097830630882526747882366180419921875p515 {+ 2620689324854174 515 (1.6968e+155)}
; 1.4711435946447728451147440864588133990764617919921875p877 * 1.581909925768492097830630882526747882366180419921875p515 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101101100 #b0111100010011100110111011101101010111000000111000011)))
(assert (= y (fp #b0 #b11000000010 #b1001010011111000000011001000010001100100101110011110)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
