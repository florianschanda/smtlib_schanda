(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x007187C4)))
;; x should be Float32(0x007187C4 [Rational(1860081, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float32)
(assert (= y (_ NaN 8 24)))
;; y should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.add RNA x y)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)
