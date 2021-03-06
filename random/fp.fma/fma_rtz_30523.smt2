(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x002C3ECC)))
;; x should be Float32(0x002C3ECC [Rational(724915, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC90F6338)))
;; y should be Float32(0xC90F6338 [Rational(-1174631, 2), -587315.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x007D2083)))
;; z should be Float32(0x007D2083 [Rational(8200323, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #x89464190))))
(check-sat)
(exit)
