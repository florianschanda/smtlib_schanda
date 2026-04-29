(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.32050095502124786861486427369527518749237060546875p-1019 {+ 1443407981605580 -1019 (2.35057e-307)}
; 1.32050095502124786861486427369527518749237060546875p-1019 S == 1.6251159681827311853652417994453571736812591552734375p-510
; [HW: 1.6251159681827311853652417994453571736812591552734375p-510] 

; mpf : + 2815272041371095 -510
; mpfd: + 2815272041371095 -510 (4.84827e-154) class: Pos. norm. non-zero
; hwf : + 2815272041371095 -510 (4.84827e-154) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000100 #b0101001000001100010110011100000000100111001011001100)))
(assert (= r (fp #b0 #b01000000001 #b1010000000000111100110011001111110001101010111010111)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
