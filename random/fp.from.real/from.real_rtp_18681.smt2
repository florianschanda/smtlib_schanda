(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11111101010011010110011)))
;; x should be Float32(0x807EA6B3 [Rational(-8300211, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 18510089561059970778211278601625151266987924100317673.0 1591434356511317254897223194069826688321459682551512695809484726058110390440106801705779200.0)))))
;; w should be Float32(0x807EA6B3 [Rational(-8300211, 713623846352979940529142984724747568191373312), -0.000000])

(assert (= x w))
(check-sat)
(exit)
