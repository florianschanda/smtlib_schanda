(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.83694522999407272578764604986645281314849853515625p582 {+ 3769266225930820 582 (2.90773e+175)}
; Y = 1.721778890751963775329613781650550663471221923828125p-830 {+ 3250603143434434 -830 (2.40481e-250)}
; 1.83694522999407272578764604986645281314849853515625p582 = 1.721778890751963775329613781650550663471221923828125p-830 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001000101 #b1101011001000010000010101110011101011110001001000100)))
(assert (= y (fp #b0 #b00011000001 #b1011100011000110100000000101101010111001000011000010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
