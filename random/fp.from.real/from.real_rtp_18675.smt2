(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x802503E1)))
;; x should be Float32(0x802503E1 [Rational(-2425825, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 2704886323158977899304852073336792371489833381329697.0 795717178255658627448611597034913344160729841275756347904742363029055195220053400852889600.0)))))
;; w should be Float32(0x802503E1 [Rational(-2425825, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
