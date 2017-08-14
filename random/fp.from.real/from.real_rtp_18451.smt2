(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11110010111111000100111)))
;; x should be Float32(0x00797E27 [Rational(7962151, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 71024754805139679073286883062784633560734582349771467.0 6365737426045269019588892776279306753285838730206050783237938904232441561760427206823116800.0))))
;; w should be Float32(0x00797E27 [Rational(7962151, 713623846352979940529142984724747568191373312), 0.000000])

(assert (= x w))
(check-sat)
(exit)
