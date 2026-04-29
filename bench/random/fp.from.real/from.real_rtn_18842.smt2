(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x1DBB7A5C)))
;; x should be Float32(0x1DBB7A5C [Rational(3071639, 618970019642690137449562112), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 697947417.0 309485009821345068724781056000.0))))
;; w should be Float32(0x1D2A65B6 [Rational(5583579, 2475880078570760549798248448), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
