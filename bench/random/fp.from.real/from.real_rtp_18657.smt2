(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10000011100001101011101)))
;; x should be Float32(0x8041C35D [Rational(-4309853, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 38445177433045496964077649833659030654774199857516589.0 6365737426045269019588892776279306753285838730206050783237938904232441561760427206823116800.0)))))
;; w should be Float32(0x8041C35D [Rational(-4309853, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
