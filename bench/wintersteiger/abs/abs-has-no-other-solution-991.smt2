(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.75212567499577342999828033498488366603851318359375p-38 {- 3387272909646748 -38 (-6.3742e-012)}
; -1.75212567499577342999828033498488366603851318359375p-38 | == 1.75212567499577342999828033498488366603851318359375p-38
; [HW: 1.75212567499577342999828033498488366603851318359375p-38] 

; mpf : + 3387272909646748 -38
; mpfd: + 3387272909646748 -38 (6.3742e-012) class: Pos. norm. non-zero
; hwf : + 3387272909646748 -38 (6.3742e-012) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111011001 #b1100000010001011010011101110100010010110101110011100)))
(assert (= r (fp #b0 #b01111011001 #b1100000010001011010011101110100010010110101110011100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
