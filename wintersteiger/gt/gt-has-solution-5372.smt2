(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7685727491081253415217133806436322629451751708984375p842 {- 3461343946490471 842 (-5.18656e+253)}
; Y = -1.23441620633662285655418600072152912616729736328125p-506 {- 1055716739507220 -506 (-5.89229e-153)}
; -1.7685727491081253415217133806436322629451751708984375p842 > -1.23441620633662285655418600072152912616729736328125p-506 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101001001 #b1100010011000001001011110000011000000100001001100111)))
(assert (= y (fp #b1 #b01000000101 #b0011110000000010101100110101001111011110010000010100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
