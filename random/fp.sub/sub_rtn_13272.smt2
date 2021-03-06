(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0070E64C)))
;; x should be Float32(0x0070E64C [Rational(1849747, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x49A9797C)))
;; y should be Float32(0x49A9797C [Rational(2776671, 2), 1388335.500000])

(declare-const result Float32)
(assert (= result (fp.sub RTN x y)))
(assert (not (= result ((_ to_fp 8 24) #xC9A9797C))))
(check-sat)
(exit)
