(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.767790591249390530492746620438992977142333984375p181 {+ 3457821420649328 181 (5.41826e+054)}
; 1.767790591249390530492746620438992977142333984375p181 S == 1.88031411803953130146283001522533595561981201171875p90
; [HW: 1.88031411803953130146283001522533595561981201171875p90] 

; mpf : + 3964582333971820 90
; mpfd: + 3964582333971820 90 (2.32772e+027) class: Pos. norm. non-zero
; hwf : + 3964582333971820 90 (2.32772e+027) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010110100 #b1100010010001101111011001001011110010111101101110000)))
(assert (= r (fp #b0 #b10001011001 #b1110000101011100010001000001101100101111110101101100)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
