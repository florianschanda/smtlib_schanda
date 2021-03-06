(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80000000)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xAEBFB00A)))
;; y should be Float32(0xAEBFB00A [Rational(-6281221, 72057594037927936), -0.000000])

(declare-const result Float32)
(assert (= result (fp.mul RTZ x y)))
(assert (not (= result (_ +zero 8 24))))
(check-sat)
(exit)
