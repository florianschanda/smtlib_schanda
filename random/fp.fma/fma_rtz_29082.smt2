(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11111111111111111111111)))
;; x should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCA4927BE)))
;; y should be Float32(0xCA4927BE [Rational(-6591455, 2), -3295727.500000])

(declare-const z Float32)
(assert (= z (_ -oo 8 24)))
;; z should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (_ -oo 8 24)))
(check-sat)
(exit)
