(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5361853417774418151253712494508363306522369384765625p-149 {- 2414764105430409 -149 (-2.15265e-045)}
; Y = -1.2344987324996352651140796297113411128520965576171875p-462 {- 1056088404304211 -462 (-1.03665e-139)}
; -1.5361853417774418151253712494508363306522369384765625p-149 < -1.2344987324996352651140796297113411128520965576171875p-462 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101010 #b1000100101000011011100010100101110000111010110001001)))
(assert (= y (fp #b1 #b01000110001 #b0011110000001000000110111110001100001010000101010011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
