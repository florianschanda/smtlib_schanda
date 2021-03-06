(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ +oo 8 24)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xD68BB7AB)))
;; y should be Float32(0xD68BB7AB [Rational(-76810482089984), -76810482089984.000000])

(declare-const result Float32)
(assert (= result (fp.add RNA x y)))
(assert (not (= result (_ +oo 8 24))))
(check-sat)
(exit)
