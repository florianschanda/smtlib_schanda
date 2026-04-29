(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.592979745532743240943318596691824495792388916015625p121 {- 2670543361019514 121 (-4.23487e+036)}
; Y = 1.4640145028385116443558899845811538398265838623046875p989 {+ 2089735542078027 989 (7.65969e+297)}
; -1.592979745532743240943318596691824495792388916015625p121 = 1.4640145028385116443558899845811538398265838623046875p989 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001111000 #b1001011111001101100001010100011001000000111001111010)))
(assert (= y (fp #b0 #b11111011100 #b0111011011001001101001111000101010001111101001001011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
