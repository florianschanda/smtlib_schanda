(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9238175372295553966495162967476062476634979248046875p456 {+ 4160504316425355 456 (3.57966e+137)}
; Y = 1.723667377959687829758195221074856817722320556640625p722 {+ 3259108133719434 722 (3.80286e+217)}
; 1.9238175372295553966495162967476062476634979248046875p456 * 1.723667377959687829758195221074856817722320556640625p722 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111000111 #b1110110001111111010011100101110111011111010010001011)))
(assert (= y (fp #b0 #b11011010001 #b1011100101000010010000111110100110000100110110001010)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
