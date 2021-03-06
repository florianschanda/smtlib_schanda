(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF800000)))
;; x should be Float32(-oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xFBB6C577)))
;; y should be Float32(0xFBB6C577 [Rational(-1898006182193194409844483144302985216), -1898006182193194409844483144302985216.000000])

(declare-const result Float32)
(assert (= result (fp.div RTN x y)))
(assert (not (= result (_ +oo 8 24))))
(check-sat)
(exit)
