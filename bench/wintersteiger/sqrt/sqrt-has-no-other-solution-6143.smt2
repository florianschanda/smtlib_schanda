(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5603025298210260185527431531227193772792816162109375p-177 {+ 2523378264516719 -177 (8.14516e-054)}
; 1.5603025298210260185527431531227193772792816162109375p-177 S == 1.76652343874686579283661558292806148529052734375p-89
; [HW: 1.76652343874686579283661558292806148529052734375p-89] 

; mpf : + 3452114673111136 -89
; mpfd: + 3452114673111136 -89 (2.85397e-027) class: Pos. norm. non-zero
; hwf : + 3452114673111136 -89 (2.85397e-027) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101001110 #b1000111101101111111111001001000101110010100001101111)))
(assert (= r (fp #b0 #b01110100110 #b1100010000111010111000010100110100001001000001100000)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
