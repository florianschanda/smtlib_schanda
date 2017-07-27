(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11101101110101101000111)))
;; x should be Float32(0x0076EB47 [Rational(7793479, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 25257207621.0 14272476927059598810582859694494951363827466240000.0)))))
;; w should be Float32(0x8013450C [Rational(-315715, 178405961588244985132285746181186892047843328), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
