(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00001000 #b01001000111111000101101)))
;; x should be Float32(0x84247E2D [Rational(-10780205, 5575186299632655785383929568162090376495104), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 187817658451321931038726744616756664226001598334903.0 97133444611286453545973095341175945332120341952606976062590620486945214260260424908800.0)))))
;; w should be Float32(0x84247E2D [Rational(-10780205, 5575186299632655785383929568162090376495104), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
