(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11010001000001110100011)))
;; x should be Float32(0x806883A3 [Rational(-6849443, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 5479555107.0 570899077082383952423314387779798054553098649600.0)))))
;; w should be Float32(0x806883A4 [Rational(-1712361, 178405961588244985132285746181186892047843328), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
