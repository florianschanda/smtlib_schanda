(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1391138728163079374411381650133989751338958740234375p838 {+ 626513185777591 838 (2.08787e+252)}
; Y = 1.4198500891886485231196957101929001510143280029296875p737 {+ 1890836705221467 737 (1.02648e+222)}
; 1.1391138728163079374411381650133989751338958740234375p838 * 1.4198500891886485231196957101929001510143280029296875p737 == +oo
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
(assert (= x (fp #b0 #b11101000101 #b0010001110011100111101110111111000101010011110110111)))
(assert (= y (fp #b0 #b11011100000 #b0110101101111011010010111010001001001001101101011011)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
