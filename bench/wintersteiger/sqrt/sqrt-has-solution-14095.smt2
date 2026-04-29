(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3608695942194384276291430069250054657459259033203125p832 {+ 1625212170056005 832 (3.89738e+250)}
; 1.3608695942194384276291430069250054657459259033203125p832 S == 1.166563154835364546357823201105929911136627197265625p416
; [HW: 1.166563154835364546357823201105929911136627197265625p416] 

; mpf : + 750133762050202 416
; mpfd: + 750133762050202 416 (1.97418e+125) class: Pos. norm. non-zero
; hwf : + 750133762050202 416 (1.97418e+125) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100111111 #b0101110001100001111100110010000101001011000101000101)))
(assert (= r (fp #b0 #b10110011111 #b0010101010100011111000100000011010111100100010011010)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
