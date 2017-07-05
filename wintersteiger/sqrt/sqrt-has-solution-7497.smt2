(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.02721733910243084864077900419943034648895263671875p-371 {+ 122575998239724 -371 (2.13567e-112)}
; 1.02721733910243084864077900419943034648895263671875p-371 S == 1.4333299265015229106978722484200261533260345458984375p-186
; [HW: 1.4333299265015229106978722484200261533260345458984375p-186] 

; mpf : + 1951544495520743 -186
; mpfd: + 1951544495520743 -186 (1.46139e-056) class: Pos. norm. non-zero
; hwf : + 1951544495520743 -186 (1.46139e-056) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010001100 #b0000011011110111101101110010110101010100001111101100)))
(assert (= r (fp #b0 #b01101000101 #b0110111011101110101101011100011010110011101111100111)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
