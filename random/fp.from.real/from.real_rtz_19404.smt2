(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11111000110011111100011)))
;; x should be Float32(0x007C67E3 [Rational(8153059, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 1044307921.0 3568119231764899702645714923623737840956866560000.0))))
;; w should be Float32(0x00032FDD [Rational(208861, 713623846352979940529142984724747568191373312), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
