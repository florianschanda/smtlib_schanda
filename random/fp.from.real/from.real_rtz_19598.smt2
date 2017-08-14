(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10110001001011010111011)))
;; x should be Float32(0x805896BB [Rational(-5805755, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 58057561.0 7136238463529799405291429847247475681913733120.0)))))
;; w should be Float32(0x805896BC [Rational(-1451439, 178405961588244985132285746181186892047843328), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
