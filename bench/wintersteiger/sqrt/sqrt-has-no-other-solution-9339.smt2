(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7508722731613357570523703543585725128650665283203125p-311 {+ 3381628089612229 -311 (4.19687e-094)}
; 1.7508722731613357570523703543585725128650665283203125p-311 S == 1.87129488491864126586960992426611483097076416015625p-156
; [HW: 1.87129488491864126586960992426611483097076416015625p-156] 

; mpf : + 3923963319049412 -156
; mpfd: + 3923963319049412 -156 (2.04863e-047) class: Pos. norm. non-zero
; hwf : + 3923963319049412 -156 (2.04863e-047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011001000 #b1100000000111001001010100101000010110011011111000101)))
(assert (= r (fp #b0 #b01101100011 #b1101111100001101001011100111101111100101110011000100)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
