(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x007FFFFF)))
;; x should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0489D46A)))
;; y should be Float32(0x0489D46A [Rational(4516405, 1393796574908163946345982392040522594123776), 0.000000])

(declare-const z Float32)
(assert (= z (_ +zero 8 24)))
;; z should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (_ +zero 8 24)))
(check-sat)
(exit)
