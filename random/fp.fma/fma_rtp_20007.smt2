(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80641655)))
;; x should be Float32(0x80641655 [Rational(-6559317, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0D976CB5)))
;; y should be Float32(0x0D976CB5 [Rational(9923765, 10633823966279326983230456482242756608), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11111111 #b11110001110100001100011)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (_ NaN 8 24)))
(check-sat)
(exit)
