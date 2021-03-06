baselines-310
baseline310ob: spec

    spec
        for: #'pharo1.x'
        do: [ 
            spec blessing: #'baseline'.
            spec
                project: 'OB'
                with: [ 
                    spec
                        className: 'ConfigurationOfOmniBrowser';
                        versionString: #'stable';
                        loads: #('Core');
                        repository: 'http://www.squeaksource.com/MetacelloRepository' ].
            spec package: 'Seaside-Pharo-Tools-OmniBrowser' with: [ spec requires: #('Seaside-Tools-OmniBrowser') ].
            spec
                package: 'Seaside-Tools-OmniBrowser'
                with: [ 
                    spec
                        requires: #('OB' 'Seaside-Tools-Core');
                        includes: #('Seaside-Pharo-Tools-OmniBrowser') ].
            spec group: 'OmniBrowser' with: #('Seaside-Tools-OmniBrowser') ].
    spec
        for: #'squeak'
        do: [ 
            spec blessing: #'baseline'.
            spec
                project: 'OB'
                with: [ 
                    spec
                        className: 'ConfigurationOfOmniBrowser';
                        versionString: #'stable';
                        loads: #('Core');
                        repository: 'http://www.squeaksource.com/MetacelloRepository' ].
            spec package: 'Seaside-Squeak-Tools-OmniBrowser' with: [ spec requires: #('Seaside-Tools-OmniBrowser') ].
            spec
                package: 'Seaside-Tools-OmniBrowser'
                with: [ 
                    spec
                        requires: #('OB' 'Seaside-Tools-Core');
                        includes: #('Seaside-Squeak-Tools-OmniBrowser') ].
            spec group: 'OmniBrowser' with: #('Seaside-Tools-OmniBrowser') ].
    spec
        for: #'pharo1.3.x'
        do: [ 
            spec
                project: 'OB'
                with: [ 
                    spec
                        className: 'ConfigurationOfOmniBrowserLukas';
                        versionString: #'stable';
                        loads: #('default');
                        repository: 'http://www.squeaksource.com/MetacelloRepository' ] ].

	spec for: #'gemstone' do: [
		spec blessing: #baseline.
		spec
			project: 'OB' with: [
				spec
					className: 'ConfigurationOfGsOB';
					versionString: #'stable';
					repository: 'http://seaside.gemtalksystems.com/ss/MetacelloRepository' ].
		spec
			package: 'Seaside-Tools-OmniBrowser' with: [
				spec 
					requires: #('OB' 'Seaside-Tools-Core');
					includes: #('Seaside-GemStone-Tools-OmniBrowser' ) ].
		spec
			package: 'Seaside-GemStone-Tools-OmniBrowser' with: [
				spec requires: #('Seaside-Tools-OmniBrowser') ].
		spec 
			 group: 'OmniBrowser' with: #('Seaside-Tools-OmniBrowser') ]