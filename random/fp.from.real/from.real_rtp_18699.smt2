(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10100001110110100110010)))
;; x should be Float32(0x8050ED32 [Rational(-2651801, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 47309716473193429152254745651191484047450982909323253.0 6365737426045269019588892776279306753285838730206050783237938904232441561760427206823116800.0)))))
;; w should be Float32(0x8050ED32 [Rational(-2651801, 356811923176489970264571492362373784095686656), -0.000000])

(assert (= x w))
(check-sat)
(exit)
