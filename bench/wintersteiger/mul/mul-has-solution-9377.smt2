(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5950487278420844017290392002905718982219696044921875p911 {+ 2679861228976899 911 (2.76121e+274)}
; Y = 1.5767883335194472493867579032666981220245361328125p235 {+ 2597623723909832 235 (8.70607e+070)}
; 1.5950487278420844017290392002905718982219696044921875p911 * 1.5767883335194472493867579032666981220245361328125p235 == +oo
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
(assert (= x (fp #b0 #b11110001110 #b1001100001010101000111010000100110011011101100000011)))
(assert (= y (fp #b0 #b10011101010 #b1001001110101000011001100111010100101110001011001000)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
