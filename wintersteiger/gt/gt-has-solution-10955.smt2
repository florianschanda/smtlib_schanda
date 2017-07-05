(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4947179650910260573226651104050688445568084716796875p258 {- 2228011643237435 258 (-6.92306e+077)}
; Y = -1.2389325022176886914593296751263551414012908935546875p-622 {- 1076056327954283 -622 (-7.11853e-188)}
; -1.4947179650910260573226651104050688445568084716796875p258 > -1.2389325022176886914593296751263551414012908935546875p-622 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100000001 #b0111111010100101110101100010100011001111010000111011)))
(assert (= y (fp #b1 #b00110010001 #b0011110100101010101011100011001011111001111101101011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
