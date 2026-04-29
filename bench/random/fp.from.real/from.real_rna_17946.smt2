(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01100101001010000010000)))
;; x should be Float32(0x00329410 [Rational(207169, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 1029765529.0 446014903970612462830714365452967230119608320000.0)))))
;; w should be Float32(0x80192409 [Rational(-1647625, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
