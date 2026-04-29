(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.69715034697986499878652466577477753162384033203125p1006 {+ 3139686042879732 1006 (1.16385e+303)}
; 1.69715034697986499878652466577477753162384033203125p1006 S == 1.3027472306552276837265935682808049023151397705078125p503
; [HW: 1.3027472306552276837265935682808049023151397705078125p503] 

; mpf : + 1363452315166333 503
; mpfd: + 1363452315166333 503 (3.41152e+151) class: Pos. norm. non-zero
; hwf : + 1363452315166333 503 (3.41152e+151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111101101 #b1011001001111000011100011111010010101100011011110100)))
(assert (= r (fp #b0 #b10111110110 #b0100110110000000110101111010111010011110011001111101)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
