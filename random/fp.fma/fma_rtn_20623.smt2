(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ +zero 8 24)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y (_ +oo 8 24)))
;; y should be Float32(+oo)

(declare-const z Float32)
(assert (= z (fp #b0 #b10111100 #b11010011000100101011100)))
;; z should be Float32(0x5E69895C [Rational(4207020659429081088), 4207020659429081088.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)
