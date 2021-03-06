(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7A1E8C03)))
;; x should be Float32(0x7A1E8C03 [Rational(205805669669375385490045953957167104), 205805669669375385490045953957167104.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xF709014E)))
;; y should be Float32(0xF709014E [Rational(-2778793483693559177333727503056896), -2778793483693559177333727503056896.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00000001)))
;; z should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (_ -oo 8 24))))
(check-sat)
(exit)
