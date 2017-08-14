(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00001101 #b00001011111000001001011)))
;; x should be Float32(0x0685F04B [Rational(8777803, 174224571863520493293247799005065324265472), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 1445813331.0 108890357414700308308279874378165827665920000.0)))))
;; w should be Float32(0x858D3155 [Rational(-9253205, 696898287454081973172991196020261297061888), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
