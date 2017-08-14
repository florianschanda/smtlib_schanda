(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00101001011010010111001)))
;; x should be Float32(0x8014B4B9 [Rational(-1356985, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 3026177306682854701386087602150499230887144448630867.0 1591434356511317254897223194069826688321459682551512695809484726058110390440106801705779200.0)))))
;; w should be Float32(0x8014B4B9 [Rational(-1356985, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
