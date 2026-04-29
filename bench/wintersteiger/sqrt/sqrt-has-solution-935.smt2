(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.532211461878805636160905123688280582427978515625p598 {+ 2396867341399696 598 (1.58948e+180)}
; 1.532211461878805636160905123688280582427978515625p598 S == 1.23782529537847363343416873249225318431854248046875p299
; [HW: 1.23782529537847363343416873249225318431854248046875p299] 

; mpf : + 1071069911645772 299
; mpfd: + 1071069911645772 299 (1.26075e+090) class: Pos. norm. non-zero
; hwf : + 1071069911645772 299 (1.26075e+090) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001010101 #b1000100000111111000000101010011101010011011010010000)))
(assert (= r (fp #b0 #b10100101010 #b0011110011100010000111100101100111001111111001001100)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
