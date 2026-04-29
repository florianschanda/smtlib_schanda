(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7645802663112017949487153600784949958324432373046875p-179 {+ 3443363402453963 -179 (2.30288e-054)}
; 1.7645802663112017949487153600784949958324432373046875p-179 S == 1.8786060078213322466211820938042365014553070068359375p-90
; [HW: 1.8786060078213322466211820938042365014553070068359375p-90] 

; mpf : + 3956889689429631 -90
; mpfd: + 3956889689429631 -90 (1.51753e-027) class: Pos. norm. non-zero
; hwf : + 3956889689429631 -90 (1.51753e-027) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101001100 #b1100001110111011100010000100011011111001001111001011)))
(assert (= r (fp #b0 #b01110100101 #b1110000011101100010100101100010110101001011001111111)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
