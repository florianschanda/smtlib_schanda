(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00001101 #b00001011111000001001011)))
;; x should be Float32(0x0685F04B [Rational(8777803, 174224571863520493293247799005065324265472), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 19116360009137096308851291542301641908754309329181.0 379427518012837709163957403676468536453595085752371000244494611277129743204142284800.0))))
;; w should be Float32(0x0685F04B [Rational(8777803, 174224571863520493293247799005065324265472), 0.000000])

(assert (= x w))
(check-sat)
(exit)
