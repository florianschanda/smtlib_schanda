(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.345947365585256516595791254076175391674041748046875p-472 {- 1558008426739566 -472 (-1.10375e-142)}
; Y = 1.724467686695156043441556903417222201824188232421875p-998 {+ 3262712403842270 -998 (6.43753e-301)}
; -1.345947365585256516595791254076175391674041748046875p-472 < 1.724467686695156043441556903417222201824188232421875p-998 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000100111 #b0101100010010000000000011010110101010011011101101110)))
(assert (= y (fp #b0 #b00000011001 #b1011100101110110101101101101110101011101010011011110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
