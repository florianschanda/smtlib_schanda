(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6367861925613385043476455393829382956027984619140625p-478 {+ 2867830059533921 -478 (2.09727e-144)}
; Y = -1.3565581740585275216659510988392867147922515869140625p-781 {- 1605795259825889 -781 (-1.06663e-235)}
; 1.6367861925613385043476455393829382956027984619140625p-478 + -1.3565581740585275216659510988392867147922515869140625p-781 == 1.6367861925613385043476455393829382956027984619140625p-478
; [HW: 1.6367861925613385043476455393829382956027984619140625p-478] 

; mpf : + 2867830059533921 -478
; mpfd: + 2867830059533921 -478 (2.09727e-144) class: Pos. norm. non-zero
; hwf : + 2867830059533921 -478 (2.09727e-144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000100001 #b1010001100000100011010110111111110011000011001100001)))
(assert (= y (fp #b1 #b00011110010 #b0101101101000111011001011000000010110011111011100001)))
(assert (= r (fp #b0 #b01000100001 #b1010001100000100011010110111111110011000011001100001)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
