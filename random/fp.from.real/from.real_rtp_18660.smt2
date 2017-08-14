(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8041C35D)))
;; x should be Float32(0x8041C35D [Rational(-4309853, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 861971153.0 142724769270595988105828596944949513638274662400.0)))))
;; w should be Float32(0x8041C35F [Rational(-4309855, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
